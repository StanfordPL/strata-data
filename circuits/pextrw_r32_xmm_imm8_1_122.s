  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                           #  Line  RIP   Bytes  Opcode                     
.target:                         #        0     0      OPC=<label>                
  vpmovzxdq %xmm1, %ymm0         #  1     0     5      OPC=vpmovzxdq_ymm_xmm      
  vpbroadcastb %xmm0, %ymm8      #  2     0x5   5      OPC=vpbroadcastb_ymm_xmm   
  vunpckhps %xmm8, %xmm0, %xmm2  #  3     0xa   5      OPC=vunpckhps_xmm_xmm_xmm  
  callq .clear_pf                #  4     0xf   5      OPC=callq_label            
  callq .read_pf_into_rbx        #  5     0x14  5      OPC=callq_label            
  movq %xmm2, %rax               #  6     0x19  5      OPC=movq_r64_xmm           
  xchgw %ax, %bx                 #  7     0x1e  2      OPC=xchgw_r16_ax           
  retq                           #  8     0x20  1      OPC=retq                   
                                                                                  
.size target, .-target
