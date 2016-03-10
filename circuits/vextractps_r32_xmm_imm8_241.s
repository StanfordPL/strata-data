  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                          #  Line  RIP   Bytes  Opcode                   
.target:                                        #        0     0      OPC=<label>              
  vpmovzxdq %xmm1, %xmm1                        #  1     0     5      OPC=vpmovzxdq_xmm_xmm    
  callq .move_128_032_xmm1_r10d_r11d_r12d_r13d  #  2     0x5   5      OPC=callq_label          
  vcvttss2sil %xmm1, %ebx                       #  3     0xa   4      OPC=vcvttss2sil_r32_xmm  
  xaddl %ebx, %r12d                             #  4     0xe   4      OPC=xaddl_r32_r32        
  retq                                          #  5     0x12  1      OPC=retq                 
                                                                                               
.size target, .-target
