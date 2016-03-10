  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                               #  Line  RIP   Bytes  Opcode                  
.target:                             #        0     0      OPC=<label>             
  vcvtdq2pd %xmm1, %xmm2             #  1     0     4      OPC=vcvtdq2pd_xmm_xmm   
  vpmovzxwd %xmm2, %xmm0             #  2     0x4   5      OPC=vpmovzxwd_xmm_xmm   
  vpandn %xmm1, %xmm0, %xmm12        #  3     0x9   4      OPC=vpandn_xmm_xmm_xmm  
  vdivpd %xmm12, %xmm0, %xmm9        #  4     0xd   5      OPC=vdivpd_xmm_xmm_xmm  
  cvtsd2sil %xmm9, %r9d              #  5     0x12  5      OPC=cvtsd2sil_r32_xmm   
  xaddb %r9b, %bl                    #  6     0x17  4      OPC=xaddb_r8_r8         
  callq .move_r9b_to_byte_8_of_ymm1  #  7     0x1b  5      OPC=callq_label         
  retq                               #  8     0x20  1      OPC=retq                
                                                                                   
.size target, .-target
