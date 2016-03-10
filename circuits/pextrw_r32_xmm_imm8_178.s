  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                            #  Line  RIP   Bytes  Opcode              
.target:                                          #        0     0      OPC=<label>         
  callq .move_128_032_xmm1_xmm8_xmm9_xmm10_xmm11  #  1     0     5      OPC=callq_label     
  vmovd %xmm9, %ebx                               #  2     0x5   4      OPC=vmovd_r32_xmm   
  orb %bl, %bl                                    #  3     0x9   2      OPC=orb_r8_r8       
  movzwq %bx, %r15                                #  4     0xb   4      OPC=movzwq_r64_r16  
  xaddq %rbx, %r15                                #  5     0xf   4      OPC=xaddq_r64_r64   
  retq                                            #  6     0x13  1      OPC=retq            
                                                                                            
.size target, .-target
