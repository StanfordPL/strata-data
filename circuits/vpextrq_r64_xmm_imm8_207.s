  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                              #  Line  RIP   Bytes  Opcode               
.target:                            #        0     0      OPC=<label>          
  movq $0xfffffffffffffffb, %rbx    #  1     0     10     OPC=movq_r64_imm64   
  callq .move_128_064_xmm1_r12_r13  #  2     0xa   5      OPC=callq_label      
  orb %bl, %bl                      #  3     0xf   2      OPC=orb_r8_r8        
  cmovneq %r13, %rbx                #  4     0x11  4      OPC=cmovneq_r64_r64  
  retq                              #  5     0x15  1      OPC=retq             
                                                                               
.size target, .-target
