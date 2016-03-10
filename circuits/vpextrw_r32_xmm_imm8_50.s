  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                          #  Line  RIP   Bytes  Opcode                       
.target:                                        #        0     0      OPC=<label>                  
  callq .move_128_032_xmm1_xmm4_xmm5_xmm6_xmm7  #  1     0     5      OPC=callq_label              
  vpunpckhqdq %xmm6, %xmm5, %xmm7               #  2     0x5   4      OPC=vpunpckhqdq_xmm_xmm_xmm  
  vpmovzxdq %xmm5, %xmm10                       #  3     0x9   5      OPC=vpmovzxdq_xmm_xmm        
  vmovmskpd %xmm7, %r14                         #  4     0xe   4      OPC=vmovmskpd_r64_xmm        
  vmovq %xmm10, %r10                            #  5     0x12  5      OPC=vmovq_r64_xmm            
  xaddw %r14w, %r10w                            #  6     0x17  5      OPC=xaddw_r16_r16            
  callq .read_cf_into_rbx                       #  7     0x1c  5      OPC=callq_label              
  movw %r10w, %bx                               #  8     0x21  4      OPC=movw_r16_r16             
  retq                                          #  9     0x25  1      OPC=retq                     
                                                                                                   
.size target, .-target
