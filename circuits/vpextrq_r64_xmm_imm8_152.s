  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                              #  Line  RIP   Bytes  Opcode               
.target:                            #        0     0      OPC=<label>          
  movq $0xfffffffffffffff8, %rbx    #  1     0     10     OPC=movq_r64_imm64   
  xorb %bl, %bh                     #  2     0xa   2      OPC=xorb_rh_r8       
  callq .move_128_064_xmm1_r12_r13  #  3     0xc   5      OPC=callq_label      
  cmovneq %r12, %rbx                #  4     0x11  4      OPC=cmovneq_r64_r64  
  retq                              #  5     0x15  1      OPC=retq             
                                                                               
.size target, .-target
