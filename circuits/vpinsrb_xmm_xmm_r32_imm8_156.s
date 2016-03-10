  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                     
.target:                                          #        0     0      OPC=<label>                
  xchgl %ebx, %ebx                                #  1     0     2      OPC=xchgl_r32_r32          
  callq .move_128_032_xmm2_xmm8_xmm9_xmm10_xmm11  #  2     0x2   5      OPC=callq_label            
  callq .set_szp_for_bl                           #  3     0x7   5      OPC=callq_label            
  vcvtss2sd %xmm8, %xmm10, %xmm1                  #  4     0xc   5      OPC=vcvtss2sd_xmm_xmm_xmm  
  callq .move_byte_14_of_ymm1_to_r8b              #  5     0x11  5      OPC=callq_label            
  cmovsl %ebx, %ebx                               #  6     0x16  3      OPC=cmovsl_r32_r32         
  xaddb %r8b, %bl                                 #  7     0x19  4      OPC=xaddb_r8_r8            
  callq .move_032_128_xmm8_xmm9_xmm10_xmm11_xmm1  #  8     0x1d  5      OPC=callq_label            
  callq .move_r8b_to_byte_12_of_ymm1              #  9     0x22  5      OPC=callq_label            
  retq                                            #  10    0x27  1      OPC=retq                   
                                                                                                   
.size target, .-target
