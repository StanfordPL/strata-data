  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                      #  Line  RIP   Bytes  Opcode                 
.target:                                    #        0     0      OPC=<label>            
  vpmovzxbd %xmm1, %xmm1                    #  1     0     5      OPC=vpmovzxbd_xmm_xmm  
  xorl %ebx, %ebx                           #  2     0x5   2      OPC=xorl_r32_r32       
  callq .move_128_032_xmm1_eax_edx_r8d_r9d  #  3     0x7   5      OPC=callq_label        
  callq .move_008_016_r8b_r9b_bx            #  4     0xc   5      OPC=callq_label        
  retq                                      #  5     0x11  1      OPC=retq               
                                                                                         
.size target, .-target
