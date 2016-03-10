  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                      #  Line  RIP   Bytes  Opcode                     
.target:                                    #        0     0      OPC=<label>                
  vunpcklpd %xmm1, %xmm1, %xmm3             #  1     0     4      OPC=vunpcklpd_xmm_xmm_xmm  
  callq .move_128_032_xmm3_eax_edx_r8d_r9d  #  2     0x4   5      OPC=callq_label            
  movq $0x6, %rbx                           #  3     0x9   10     OPC=movq_r64_imm64         
  salb $0x1, %bh                            #  4     0x13  2      OPC=salb_rh_one            
  xaddw %bx, %ax                            #  5     0x15  4      OPC=xaddw_r16_r16          
  retq                                      #  6     0x19  1      OPC=retq                   
                                                                                             
.size target, .-target
