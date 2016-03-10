  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                          #  Line  RIP  Bytes  Opcode                
.target:                                        #        0    0      OPC=<label>           
  callq .move_128_032_xmm1_xmm4_xmm5_xmm6_xmm7  #  1     0    5      OPC=callq_label       
  movq %xmm7, %rbx                              #  2     0x5  5      OPC=movq_r64_xmm      
  testb %bl, %bh                                #  3     0xa  2      OPC=testb_rh_r8       
  cmovngel %ebx, %ebx                           #  4     0xc  3      OPC=cmovngel_r32_r32  
  retq                                          #  5     0xf  1      OPC=retq              
                                                                                           
.size target, .-target
