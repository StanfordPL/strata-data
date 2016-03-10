  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                #  Line  RIP   Bytes  Opcode                  
.target:                              #        0     0      OPC=<label>             
  vxorps %xmm8, %xmm8, %xmm2          #  1     0     5      OPC=vxorps_xmm_xmm_xmm  
  vcvtss2sil %xmm2, %ebx              #  2     0x5   4      OPC=vcvtss2sil_r32_xmm  
  callq .move_byte_10_of_ymm1_to_r9b  #  3     0x9   5      OPC=callq_label         
  addb %r9b, %bl                      #  4     0xe   3      OPC=addb_r8_r8          
  retq                                #  5     0x11  1      OPC=retq                
                                                                                    
.size target, .-target
