  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                            #  Line  RIP   Bytes  Opcode                 
.target:                          #        0     0      OPC=<label>            
  vpmovzxdq %xmm1, %ymm1          #  1     0     5      OPC=vpmovzxdq_ymm_xmm  
  cvtsd2sil %xmm1, %edx           #  2     0x5   4      OPC=cvtsd2sil_r32_xmm  
  callq .move_128_064_xmm1_r8_r9  #  3     0x9   5      OPC=callq_label        
  orq %r9, %rdx                   #  4     0xe   3      OPC=orq_r64_r64        
  callq .read_cf_into_rbx         #  5     0x11  5      OPC=callq_label        
  cmovnsl %r9d, %ebx              #  6     0x16  4      OPC=cmovnsl_r32_r32    
  retq                            #  7     0x1a  1      OPC=retq               
                                                                               
.size target, .-target
