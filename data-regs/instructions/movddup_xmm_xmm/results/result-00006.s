  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                              #  Line  RIP   Bytes  Opcode              
.target:                            #        0     0      OPC=<label>         
  callq .set_zf                     #  1     0     5      OPC=callq_label     
  callq .move_128_064_xmm2_r12_r13  #  2     0x5   5      OPC=callq_label     
  rolw $0x1, %r13w                  #  3     0xa   4      OPC=rolw_r16_one    
  cmovzq %r12, %r13                 #  4     0xe   4      OPC=cmovzq_r64_r64  
  callq .move_064_128_r12_r13_xmm1  #  5     0x12  5      OPC=callq_label     
  retq                              #  6     0x17  1      OPC=retq            
                                                                              
.size target, .-target
