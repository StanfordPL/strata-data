  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text                                          #  Line  RIP   Bytes  Opcode                 
.target:                                        #        0     0      OPC=<label>            
  vmovd %ebx, %xmm10                            #  1     0     4      OPC=vmovd_xmm_r32      
  vmovd %ecx, %xmm6                             #  2     0x4   4      OPC=vmovd_xmm_r32      
  vsqrtps %xmm10, %xmm11                        #  3     0x8   5      OPC=vsqrtps_xmm_xmm    
  callq .move_64_128_xmm10_xmm11_xmm1           #  4     0xd   5      OPC=callq_label        
  vpand %xmm1, %xmm6, %xmm3                     #  5     0x12  4      OPC=vpand_xmm_xmm_xmm  
  vmovd %xmm3, %ebx                             #  6     0x16  4      OPC=vmovd_r32_xmm      
  callq .move_128_032_xmm1_r10d_r11d_r12d_r13d  #  7     0x1a  5      OPC=callq_label        
  orl %ebx, %r11d                               #  8     0x1f  3      OPC=orl_r32_r32        
  retq                                          #  9     0x22  1      OPC=retq               
                                                                                             
.size target, .-target
