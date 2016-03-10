  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                          #  Line  RIP   Bytes  Opcode                
.target:                                        #        0     0      OPC=<label>           
  xorb %dil, %dil                               #  1     0     2      OPC=xorb_r8_r8        
  callq .read_sf_into_rbx                       #  2     0x2   5      OPC=callq_label       
  vmovupd %xmm1, %xmm3                          #  3     0x7   4      OPC=vmovupd_xmm_xmm   
  pmovzxwd %xmm3, %xmm1                         #  4     0xb   5      OPC=pmovzxwd_xmm_xmm  
  callq .move_128_032_xmm1_r10d_r11d_r12d_r13d  #  5     0x10  5      OPC=callq_label       
  xaddl %ebx, %r12d                             #  6     0x15  4      OPC=xaddl_r32_r32     
  retq                                          #  7     0x19  1      OPC=retq              
                                                                                            
.size target, .-target
