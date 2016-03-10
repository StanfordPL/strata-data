  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                              #  Line  RIP   Bytes  Opcode                       
.target:                            #        0     0      OPC=<label>                  
  vpmovzxwq %xmm1, %xmm2            #  1     0     5      OPC=vpmovzxwq_xmm_xmm        
  vpunpckhqdq %ymm2, %ymm2, %ymm10  #  2     0x5   4      OPC=vpunpckhqdq_ymm_ymm_ymm  
  movmskpd %xmm2, %ebx              #  3     0x9   4      OPC=movmskpd_r32_xmm         
  vmovq %xmm10, %r14                #  4     0xd   5      OPC=vmovq_r64_xmm            
  xchgb %bh, %bh                    #  5     0x12  2      OPC=xchgb_rh_rh              
  xaddw %bx, %r14w                  #  6     0x14  5      OPC=xaddw_r16_r16            
  retq                              #  7     0x19  1      OPC=retq                     
                                                                                       
.size target, .-target
