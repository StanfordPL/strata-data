  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                          #  Line  RIP   Bytes  Opcode                 
.target:                                        #        0     0      OPC=<label>            
  pmovsxbq %xmm1, %xmm4                         #  1     0     5      OPC=pmovsxbq_xmm_xmm   
  vpmovzxdq %xmm4, %ymm15                       #  2     0x5   5      OPC=vpmovzxdq_ymm_xmm  
  vmovmskpd %xmm15, %r8d                        #  3     0xa   5      OPC=vmovmskpd_r32_xmm  
  decw %r8w                                     #  4     0xf   4      OPC=decw_r16           
  callq .move_128_032_xmm1_r10d_r11d_r12d_r13d  #  5     0x13  5      OPC=callq_label        
  callq .read_of_into_rbx                       #  6     0x18  5      OPC=callq_label        
  xchgw %bx, %r11w                              #  7     0x1d  4      OPC=xchgw_r16_r16      
  retq                                          #  8     0x21  1      OPC=retq               
                                                                                             
.size target, .-target
