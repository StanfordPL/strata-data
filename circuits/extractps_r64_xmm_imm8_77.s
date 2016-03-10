  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                    #  Line  RIP   Bytes  Opcode                 
.target:                  #        0     0      OPC=<label>            
  vmovshdup %xmm1, %xmm8  #  1     0     4      OPC=vmovshdup_xmm_xmm  
  movaps %xmm8, %xmm2     #  2     0x4   4      OPC=movaps_xmm_xmm     
  vmovq %xmm2, %xmm4      #  3     0x8   4      OPC=vmovq_xmm_xmm      
  movd %xmm4, %ebx        #  4     0xc   4      OPC=movd_r32_xmm       
  retq                    #  5     0x10  1      OPC=retq               
                                                                       
.size target, .-target
