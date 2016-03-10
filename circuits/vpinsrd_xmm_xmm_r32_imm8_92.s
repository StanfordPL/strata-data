  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                     
.target:                                          #        0     0      OPC=<label>                
  callq .move_128_032_xmm2_xmm8_xmm9_xmm10_xmm11  #  1     0     5      OPC=callq_label            
  vmovd %ebx, %xmm2                               #  2     0x5   4      OPC=vmovd_xmm_r32          
  vdivss %xmm2, %xmm2, %xmm7                      #  3     0x9   4      OPC=vdivss_xmm_xmm_xmm     
  movq %xmm2, %xmm8                               #  4     0xd   5      OPC=movq_xmm_xmm           
  vunpcklps %xmm7, %xmm2, %xmm1                   #  5     0x12  4      OPC=vunpcklps_xmm_xmm_xmm  
  callq .move_032_128_xmm8_xmm9_xmm10_xmm11_xmm1  #  6     0x16  5      OPC=callq_label            
  retq                                            #  7     0x1b  1      OPC=retq                   
                                                                                                   
.size target, .-target
