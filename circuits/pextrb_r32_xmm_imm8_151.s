  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                               #  Line  RIP   Bytes  Opcode                  
.target:                             #        0     0      OPC=<label>             
  vcvtss2sil %xmm1, %r9d             #  1     0     4      OPC=vcvtss2sil_r32_xmm  
  popcntq %r9, %rbx                  #  2     0x4   5      OPC=popcntq_r64_r64     
  callq .read_pf_into_rbx            #  3     0x9   5      OPC=callq_label         
  callq .move_byte_7_of_ymm1_to_r9b  #  4     0xe   5      OPC=callq_label         
  addb %r9b, %bl                     #  5     0x13  3      OPC=addb_r8_r8          
  retq                               #  6     0x16  1      OPC=retq                
                                                                                   
.size target, .-target
