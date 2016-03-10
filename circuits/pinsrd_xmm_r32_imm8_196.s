  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                          #  Line  RIP   Bytes  Opcode                  
.target:                        #        0     0      OPC=<label>             
  movd %ebx, %xmm11             #  1     0     5      OPC=movd_xmm_r32        
  vmovq %xmm1, %xmm13           #  2     0x5   4      OPC=vmovq_xmm_xmm       
  vmovss %xmm11, %xmm13, %xmm3  #  3     0x9   5      OPC=vmovss_xmm_xmm_xmm  
  movsd %xmm3, %xmm1            #  4     0xe   4      OPC=movsd_xmm_xmm       
  minss %xmm11, %xmm1           #  5     0x12  5      OPC=minss_xmm_xmm       
  retq                          #  6     0x17  1      OPC=retq                
                                                                              
.size target, .-target
