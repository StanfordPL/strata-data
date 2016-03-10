  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                              #  Line  RIP   Bytes  Opcode               
.target:                            #        0     0      OPC=<label>          
  callq .move_128_064_xmm1_r12_r13  #  1     0     5      OPC=callq_label      
  sarb $0x1, %r12b                  #  2     0x5   3      OPC=sarb_r8_one      
  callq .read_cf_into_rbx           #  3     0x8   5      OPC=callq_label      
  andb %bl, %bh                     #  4     0xd   2      OPC=andb_rh_r8       
  cmovngq %r13, %rbx                #  5     0xf   4      OPC=cmovngq_r64_r64  
  retq                              #  6     0x13  1      OPC=retq             
                                                                               
.size target, .-target
