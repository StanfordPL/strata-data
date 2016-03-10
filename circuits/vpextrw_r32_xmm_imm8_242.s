  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                          #  Line  RIP   Bytes  Opcode                 
.target:                                        #        0     0      OPC=<label>            
  callq .move_128_032_xmm1_r10d_r11d_r12d_r13d  #  1     0     5      OPC=callq_label        
  vpmovzxdq %xmm1, %xmm10                       #  2     0x5   5      OPC=vpmovzxdq_xmm_xmm  
  vmovmskpd %xmm10, %rbx                        #  3     0xa   5      OPC=vmovmskpd_r64_xmm  
  xaddw %bx, %r11w                              #  4     0xf   5      OPC=xaddw_r16_r16      
  retq                                          #  5     0x14  1      OPC=retq               
                                                                                             
.size target, .-target
