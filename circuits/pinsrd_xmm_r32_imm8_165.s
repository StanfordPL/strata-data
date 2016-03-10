  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                     #  Line  RIP   Bytes  Opcode                 
.target:                   #        0     0      OPC=<label>            
  movaps %xmm1, %xmm13     #  1     0     4      OPC=movaps_xmm_xmm     
  vmovd %ebx, %xmm9        #  2     0x4   4      OPC=vmovd_xmm_r32      
  punpckldq %xmm9, %xmm13  #  3     0x8   5      OPC=punpckldq_xmm_xmm  
  movsd %xmm13, %xmm1      #  4     0xd   5      OPC=movsd_xmm_xmm      
  retq                     #  5     0x12  1      OPC=retq               
                                                                        
.size target, .-target
