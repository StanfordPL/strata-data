  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                #  Line  RIP   Bytes  Opcode                 
.target:                              #        0     0      OPC=<label>            
  vcvtps2pd %xmm1, %xmm3              #  1     0     4      OPC=vcvtps2pd_xmm_xmm  
  vmovups %xmm3, %xmm2                #  2     0x4   4      OPC=vmovups_xmm_xmm    
  callq .move_256_128_ymm2_xmm8_xmm9  #  3     0x8   5      OPC=callq_label        
  vpmovzxbd %xmm9, %xmm11             #  4     0xd   5      OPC=vpmovzxbd_xmm_xmm  
  pmovsxdq %xmm11, %xmm1              #  5     0x12  6      OPC=pmovsxdq_xmm_xmm   
  retq                                #  6     0x18  1      OPC=retq               
                                                                                   
.size target, .-target
