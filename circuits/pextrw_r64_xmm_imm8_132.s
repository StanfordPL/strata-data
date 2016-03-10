  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                              #  Line  RIP   Bytes  Opcode               
.target:                            #        0     0      OPC=<label>          
  xorq %rbx, %rbx                   #  1     0     3      OPC=xorq_r64_r64     
  callq .move_128_064_xmm1_r12_r13  #  2     0x3   5      OPC=callq_label      
  salb $0x1, %bh                    #  3     0x8   2      OPC=salb_rh_one      
  callq .set_szp_for_rbx            #  4     0xa   5      OPC=callq_label      
  cmovngw %r13w, %bx                #  5     0xf   5      OPC=cmovngw_r16_r16  
  retq                              #  6     0x14  1      OPC=retq             
                                                                               
.size target, .-target
