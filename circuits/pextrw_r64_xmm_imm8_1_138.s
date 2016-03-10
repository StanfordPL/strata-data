  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                          #  Line  RIP   Bytes  Opcode                 
.target:                                        #        0     0      OPC=<label>            
  callq .move_128_032_xmm1_xmm4_xmm5_xmm6_xmm7  #  1     0     5      OPC=callq_label        
  vpmovzxwd %xmm5, %xmm3                        #  2     0x5   5      OPC=vpmovzxwd_xmm_xmm  
  vmovd %xmm3, %ebx                             #  3     0xa   4      OPC=vmovd_r32_xmm      
  xchgb %bh, %bl                                #  4     0xe   2      OPC=xchgb_r8_rh        
  xchgb %bl, %bh                                #  5     0x10  2      OPC=xchgb_rh_r8        
  retq                                          #  6     0x12  1      OPC=retq               
                                                                                             
.size target, .-target
