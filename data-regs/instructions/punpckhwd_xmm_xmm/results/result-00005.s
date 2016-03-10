  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                                 #  Line  RIP   Bytes  Opcode                     
.target:                               #        0     0      OPC=<label>                
  callq .move_128_64_xmm1_xmm12_xmm13  #  1     0     5      OPC=callq_label            
  divsd %xmm13, %xmm2                  #  2     0x5   5      OPC=divsd_xmm_xmm          
  vunpckhpd %xmm2, %xmm2, %xmm3        #  3     0xa   4      OPC=vunpckhpd_xmm_xmm_xmm  
  movupd %xmm13, %xmm10                #  4     0xe   5      OPC=movupd_xmm_xmm         
  punpcklwd %xmm3, %xmm10              #  5     0x13  5      OPC=punpcklwd_xmm_xmm      
  movups %xmm10, %xmm1                 #  6     0x18  4      OPC=movups_xmm_xmm         
  retq                                 #  7     0x1c  1      OPC=retq                   
                                                                                        
.size target, .-target
