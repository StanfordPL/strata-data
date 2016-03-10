  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    8 bytes

# Text                            #  Line  RIP   Bytes  Opcode              
.target:                          #        0     0      OPC=<label>         
  callq .move_128_064_xmm1_r8_r9  #  1     0     5      OPC=callq_label     
  movq $0xffffffffffffffe0, %rbx  #  2     0x5   10     OPC=movq_r64_imm64  
  xchgq %rbx, %r9                 #  3     0xf   3      OPC=xchgq_r64_r64   
  retq                            #  4     0x12  1      OPC=retq            
                                                                            
.size target, .-target
