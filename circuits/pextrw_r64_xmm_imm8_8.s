  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                     #  Line  RIP   Bytes  Opcode                 
.target:                   #        0     0      OPC=<label>            
  vpmovzxdq %xmm1, %ymm15  #  1     0     5      OPC=vpmovzxdq_ymm_xmm  
  vmovq %xmm1, %r15        #  2     0x5   5      OPC=vmovq_r64_xmm      
  movmskpd %xmm15, %rbx    #  3     0xa   5      OPC=movmskpd_r64_xmm   
  xaddw %bx, %r15w         #  4     0xf   5      OPC=xaddw_r16_r16      
  retq                     #  5     0x14  1      OPC=retq               
                                                                        
.size target, .-target
