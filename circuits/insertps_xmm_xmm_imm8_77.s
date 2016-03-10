  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                 #  Line  RIP   Bytes  Opcode                     
.target:                               #        0     0      OPC=<label>                
  vcvtsd2ss %xmm2, %xmm1, %xmm3        #  1     0     4      OPC=vcvtsd2ss_xmm_xmm_xmm  
  vxorpd %xmm7, %xmm7, %xmm11          #  2     0x4   4      OPC=vxorpd_xmm_xmm_xmm     
  vcvtsd2ss %xmm11, %xmm3, %xmm10      #  3     0x8   5      OPC=vcvtsd2ss_xmm_xmm_xmm  
  callq .move_64_128_xmm10_xmm11_xmm1  #  4     0xd   5      OPC=callq_label            
  retq                                 #  5     0x12  1      OPC=retq                   
                                                                                        
.size target, .-target
