  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                #  Line  RIP   Bytes  Opcode               
.target:                              #        0     0      OPC=<label>          
  movq $0x3, %rbx                     #  1     0     10     OPC=movq_r64_imm64   
  popcntq %rbx, %r9                   #  2     0xa   5      OPC=popcntq_r64_r64  
  sets %ch                            #  3     0xf   3      OPC=sets_rh          
  andb %ch, %bh                       #  4     0x12  2      OPC=andb_rh_rh       
  callq .move_byte_12_of_ymm1_to_r9b  #  5     0x14  5      OPC=callq_label      
  cmoveq %r9, %rbx                    #  6     0x19  4      OPC=cmoveq_r64_r64   
  retq                                #  7     0x1d  1      OPC=retq             
                                                                                 
.size target, .-target
