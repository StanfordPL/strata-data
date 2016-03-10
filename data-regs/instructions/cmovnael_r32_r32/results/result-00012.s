  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                                      #  Line  RIP  Bytes  Opcode               
.target:                                    #        0    0      OPC=<label>          
  vmovd %ebx, %xmm1                         #  1     0    4      OPC=vmovd_xmm_r32    
  callq .move_128_032_xmm1_eax_edx_r8d_r9d  #  2     0x4  5      OPC=callq_label      
  adcl %r9d, %r9d                           #  3     0x9  3      OPC=adcl_r32_r32     
  cmovnel %ecx, %ebx                        #  4     0xc  3      OPC=cmovnel_r32_r32  
  retq                                      #  5     0xf  1      OPC=retq             
                                                                                      
.size target, .-target
