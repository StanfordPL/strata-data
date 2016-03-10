  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                #  Line  RIP   Bytes  Opcode                   
.target:                              #        0     0      OPC=<label>              
  callq .move_byte_15_of_ymm1_to_r9b  #  1     0     5      OPC=callq_label          
  vandnps %xmm1, %xmm1, %xmm1         #  2     0x5   4      OPC=vandnps_xmm_xmm_xmm  
  vcvtsd2sil %xmm1, %ebx              #  3     0x9   4      OPC=vcvtsd2sil_r32_xmm   
  addb %r9b, %bl                      #  4     0xd   3      OPC=addb_r8_r8           
  retq                                #  5     0x10  1      OPC=retq                 
                                                                                     
.size target, .-target
