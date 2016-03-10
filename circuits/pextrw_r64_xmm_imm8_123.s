  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                      #  Line  RIP   Bytes  Opcode                 
.target:                                    #        0     0      OPC=<label>            
  vpmovzxwd %xmm1, %ymm3                    #  1     0     5      OPC=vpmovzxwd_ymm_xmm  
  callq .move_128_032_xmm3_eax_edx_r8d_r9d  #  2     0x5   5      OPC=callq_label        
  incb %ah                                  #  3     0xa   2      OPC=incb_rh            
  callq .read_zf_into_rbx                   #  4     0xc   5      OPC=callq_label        
  xaddw %bx, %r9w                           #  5     0x11  5      OPC=xaddw_r16_r16      
  retq                                      #  6     0x16  1      OPC=retq               
                                                                                         
.size target, .-target
