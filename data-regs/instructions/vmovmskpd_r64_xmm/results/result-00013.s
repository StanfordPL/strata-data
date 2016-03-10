  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                    #  Line  RIP  Bytes  Opcode                 
.target:                  #        0    0      OPC=<label>            
  vsqrtps %xmm1, %xmm12   #  1     0    4      OPC=vsqrtps_xmm_xmm    
  maxss %xmm1, %xmm12     #  2     0x4  5      OPC=maxss_xmm_xmm      
  vmovmskpd %xmm12, %ebx  #  3     0x9  5      OPC=vmovmskpd_r32_xmm  
  retq                    #  4     0xe  1      OPC=retq               
                                                                      
.size target, .-target
