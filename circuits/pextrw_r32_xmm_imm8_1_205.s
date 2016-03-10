  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                      #  Line  RIP   Bytes  Opcode                 
.target:                                    #        0     0      OPC=<label>            
  callq .move_128_64_xmm1_xmm10_xmm11       #  1     0     5      OPC=callq_label        
  vpmovzxbd %xmm11, %ymm2                   #  2     0x5   5      OPC=vpmovzxbd_ymm_xmm  
  callq .move_128_032_xmm2_eax_edx_r8d_r9d  #  3     0xa   5      OPC=callq_label        
  testw %r9w, %r9w                          #  4     0xf   4      OPC=testw_r16_r16      
  callq .read_cf_into_rbx                   #  5     0x13  5      OPC=callq_label        
  callq .move_008_016_r8b_r9b_bx            #  6     0x18  5      OPC=callq_label        
  retq                                      #  7     0x1d  1      OPC=retq               
                                                                                         
.size target, .-target
