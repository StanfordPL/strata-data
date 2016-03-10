  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                                          #  Line  RIP   Bytes  Opcode                 
.target:                                        #        0     0      OPC=<label>            
  callq .move_128_064_xmm3_r8_r9                #  1     0     5      OPC=callq_label        
  callq .move_128_032_xmm2_r10d_r11d_r12d_r13d  #  2     0x5   5      OPC=callq_label        
  callq .move_128_064_xmm2_r12_r13              #  3     0xa   5      OPC=callq_label        
  vpmovzxdq %xmm3, %xmm1                        #  4     0xf   5      OPC=vpmovzxdq_xmm_xmm  
  movl %r8d, %edi                               #  5     0x14  3      OPC=movl_r32_r32       
  xorl %r10d, %edi                              #  6     0x17  3      OPC=xorl_r32_r32       
  xorq %rdi, %r12                               #  7     0x1a  3      OPC=xorq_r64_r64       
  callq .move_064_128_r12_r13_xmm1              #  8     0x1d  5      OPC=callq_label        
  retq                                          #  9     0x22  1      OPC=retq               
                                                                                             
.size target, .-target
