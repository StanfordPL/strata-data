  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                               #  Line  RIP   Bytes  Opcode                    
.target:                             #        0     0      OPC=<label>               
  callq .move_byte_8_of_ymm1_to_r9b  #  1     0     5      OPC=callq_label           
  xorps %xmm5, %xmm5                 #  2     0x5   3      OPC=xorps_xmm_xmm         
  vbroadcastsd %xmm5, %ymm7          #  3     0x8   5      OPC=vbroadcastsd_ymm_xmm  
  vcvtss2sil %xmm7, %ebx             #  4     0xd   4      OPC=vcvtss2sil_r32_xmm    
  addb %r9b, %bl                     #  5     0x11  3      OPC=addb_r8_r8            
  xorb %bh, %bh                      #  6     0x14  2      OPC=xorb_rh_rh            
  retq                               #  7     0x16  1      OPC=retq                  
                                                                                     
.size target, .-target
