  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                 #  Line  RIP   Bytes  Opcode                    
.target:                               #        0     0      OPC=<label>               
  movdqu %xmm2, %xmm1                  #  1     0     4      OPC=movdqu_xmm_xmm        
  vbroadcastsd %xmm2, %ymm7            #  2     0x4   5      OPC=vbroadcastsd_ymm_xmm  
  vrsqrtss %xmm7, %xmm7, %xmm15        #  3     0x9   4      OPC=vrsqrtss_xmm_xmm_xmm  
  unpckhps %xmm15, %xmm1               #  4     0xd   4      OPC=unpckhps_xmm_xmm      
  callq .move_128_64_xmm1_xmm12_xmm13  #  5     0x11  5      OPC=callq_label           
  minss %xmm1, %xmm1                   #  6     0x16  4      OPC=minss_xmm_xmm         
  unpcklps %xmm1, %xmm13               #  7     0x1a  4      OPC=unpcklps_xmm_xmm      
  movlhps %xmm1, %xmm1                 #  8     0x1e  3      OPC=movlhps_xmm_xmm       
  movsd %xmm13, %xmm1                  #  9     0x21  5      OPC=movsd_xmm_xmm         
  retq                                 #  10    0x26  1      OPC=retq                  
                                                                                       
.size target, .-target
