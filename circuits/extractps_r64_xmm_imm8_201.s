  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                          #  Line  RIP   Bytes  Opcode                 
.target:                                        #        0     0      OPC=<label>            
  callq .move_128_032_xmm1_r10d_r11d_r12d_r13d  #  1     0     5      OPC=callq_label        
  movups %xmm1, %xmm2                           #  2     0x5   3      OPC=movups_xmm_xmm     
  cvtss2sil %xmm2, %ebp                         #  3     0x8   4      OPC=cvtss2sil_r32_xmm  
  xaddl %ebp, %r11d                             #  4     0xc   4      OPC=xaddl_r32_r32      
  movl %ebp, %ebx                               #  5     0x10  2      OPC=movl_r32_r32       
  retq                                          #  6     0x12  1      OPC=retq               
                                                                                             
.size target, .-target
