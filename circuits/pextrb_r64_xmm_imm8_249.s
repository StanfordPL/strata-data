  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                               #  Line  RIP   Bytes  Opcode               
.target:                             #        0     0      OPC=<label>          
  callq .move_128_064_xmm1_r8_r9     #  1     0     5      OPC=callq_label      
  callq .move_byte_9_of_ymm1_to_r9b  #  2     0x5   5      OPC=callq_label      
  popcntq %r9, %rdx                  #  3     0xa   5      OPC=popcntq_r64_r64  
  callq .read_zf_into_rbx            #  4     0xf   5      OPC=callq_label      
  xaddb %bl, %r9b                    #  5     0x14  4      OPC=xaddb_r8_r8      
  retq                               #  6     0x18  1      OPC=retq             
                                                                                
.size target, .-target