  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                      #  Line  RIP   Bytes  Opcode                 
.target:                                    #        0     0      OPC=<label>            
  unpckhpd %xmm1, %xmm1                     #  1     0     4      OPC=unpckhpd_xmm_xmm   
  vpmovzxwd %xmm1, %ymm2                    #  2     0x4   5      OPC=vpmovzxwd_ymm_xmm  
  callq .move_128_032_xmm2_eax_edx_r8d_r9d  #  3     0x9   5      OPC=callq_label        
  blsrl %edx, %r14d                         #  4     0xe   5      OPC=blsrl_r32_r32      
  callq .read_zf_into_rbx                   #  5     0x13  5      OPC=callq_label        
  xaddw %bx, %r9w                           #  6     0x18  5      OPC=xaddw_r16_r16      
  retq                                      #  7     0x1d  1      OPC=retq               
                                                                                         
.size target, .-target
