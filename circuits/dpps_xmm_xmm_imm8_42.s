  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                     
.target:                                          #        0     0      OPC=<label>                
  callq .move_128_032_xmm2_xmm8_xmm9_xmm10_xmm11  #  1     0     5      OPC=callq_label            
  mulps %xmm2, %xmm1                              #  2     0x5   3      OPC=mulps_xmm_xmm          
  vunpckhps %xmm8, %xmm9, %xmm0                   #  3     0x8   5      OPC=vunpckhps_xmm_xmm_xmm  
  vcvtsd2ss %xmm0, %xmm1, %xmm4                   #  4     0xd   4      OPC=vcvtsd2ss_xmm_xmm_xmm  
  addsubps %xmm0, %xmm4                           #  5     0x11  4      OPC=addsubps_xmm_xmm       
  movddup %xmm4, %xmm1                            #  6     0x15  4      OPC=movddup_xmm_xmm        
  retq                                            #  7     0x19  1      OPC=retq                   
                                                                                                   
.size target, .-target
