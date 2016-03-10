  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                      #  Line  RIP   Bytes  Opcode                  
.target:                                    #        0     0      OPC=<label>             
  vmovsldup %xmm1, %xmm8                    #  1     0     4      OPC=vmovsldup_xmm_xmm   
  vdivss %xmm8, %xmm1, %xmm3                #  2     0x4   5      OPC=vdivss_xmm_xmm_xmm  
  xorl %ebx, %ebx                           #  3     0x9   2      OPC=xorl_r32_r32        
  callq .move_128_032_xmm3_eax_edx_r8d_r9d  #  4     0xb   5      OPC=callq_label         
  xaddb %bh, %dh                            #  5     0x10  3      OPC=xaddb_rh_rh         
  cmovnbw %dx, %bx                          #  6     0x13  4      OPC=cmovnbw_r16_r16     
  retq                                      #  7     0x17  1      OPC=retq                
                                                                                          
.size target, .-target
