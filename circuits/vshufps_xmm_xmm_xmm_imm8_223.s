  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                              #  Line  RIP   Bytes  Opcode                       
.target:                            #        0     0      OPC=<label>                  
  movshdup %xmm2, %xmm13            #  1     0     5      OPC=movshdup_xmm_xmm         
  addss %xmm2, %xmm3                #  2     0x5   4      OPC=addss_xmm_xmm            
  vpbroadcastq %xmm3, %xmm12        #  3     0x9   5      OPC=vpbroadcastq_xmm_xmm     
  vunpckhps %xmm3, %xmm12, %xmm3    #  4     0xe   4      OPC=vunpckhps_xmm_xmm_xmm    
  movupd %xmm3, %xmm4               #  5     0x12  4      OPC=movupd_xmm_xmm           
  vpunpckhqdq %xmm4, %xmm13, %xmm1  #  6     0x16  4      OPC=vpunpckhqdq_xmm_xmm_xmm  
  retq                              #  7     0x1a  1      OPC=retq                     
                                                                                       
.size target, .-target
