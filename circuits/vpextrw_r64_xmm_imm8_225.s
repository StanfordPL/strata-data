  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                             #  Line  RIP   Bytes  Opcode                 
.target:                           #        0     0      OPC=<label>            
  vpmovsxdq %xmm1, %ymm6           #  1     0     5      OPC=vpmovsxdq_ymm_xmm  
  movd %xmm6, %ebx                 #  2     0x5   4      OPC=movd_r32_xmm       
  callq .move_032_016_ebx_r8w_r9w  #  3     0x9   5      OPC=callq_label        
  movzwl %r9w, %ebx                #  4     0xe   4      OPC=movzwl_r32_r16     
  retq                             #  5     0x12  1      OPC=retq               
                                                                                
.size target, .-target
