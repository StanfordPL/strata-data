  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                #  Line  RIP   Bytes  Opcode                   
.target:                              #        0     0      OPC=<label>              
  callq .move_128_64_xmm2_xmm8_xmm9   #  1     0     5      OPC=callq_label          
  vcvttss2sil %xmm8, %r9d             #  2     0x5   5      OPC=vcvttss2sil_r32_xmm  
  callq .move_r9b_to_byte_13_of_ymm1  #  3     0xa   5      OPC=callq_label          
  punpcklqdq %xmm9, %xmm1             #  4     0xf   5      OPC=punpcklqdq_xmm_xmm   
  retq                                #  5     0x14  1      OPC=retq                 
                                                                                     
.size target, .-target
