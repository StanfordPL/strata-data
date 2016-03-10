  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                           #  Line  RIP   Bytes  Opcode                     
.target:                         #        0     0      OPC=<label>                
  vpbroadcastq %xmm1, %ymm9      #  1     0     5      OPC=vpbroadcastq_ymm_xmm   
  vcvtsd2ss %xmm9, %xmm9, %xmm9  #  2     0x5   5      OPC=vcvtsd2ss_xmm_xmm_xmm  
  andnpd %xmm9, %xmm9            #  3     0xa   5      OPC=andnpd_xmm_xmm         
  movddup %xmm9, %xmm1           #  4     0xf   5      OPC=movddup_xmm_xmm        
  retq                           #  5     0x14  1      OPC=retq                   
                                                                                  
.size target, .-target
