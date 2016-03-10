  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                          #  Line  RIP   Bytes  Opcode              
.target:                                        #        0     0      OPC=<label>         
  callq .move_128_032_xmm1_xmm4_xmm5_xmm6_xmm7  #  1     0     5      OPC=callq_label     
  vmovd %xmm7, %eax                             #  2     0x5   4      OPC=vmovd_r32_xmm   
  movq $0x5, %rbx                               #  3     0x9   10     OPC=movq_r64_imm64  
  incb %bh                                      #  4     0x13  2      OPC=incb_rh         
  xchgw %ax, %bx                                #  5     0x15  3      OPC=xchgw_r16_r16   
  retq                                          #  6     0x18  1      OPC=retq            
                                                                                          
.size target, .-target
