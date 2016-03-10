  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                #  Line  RIP   Bytes  Opcode               
.target:              #        0     0      OPC=<label>          
  vmovd %ecx, %xmm6   #  1     0     4      OPC=vmovd_xmm_r32    
  seto %r11b          #  2     0x4   4      OPC=seto_r8          
  shlb $0x1, %r11b    #  3     0x8   3      OPC=shlb_r8_one      
  vmovq %xmm6, %r8    #  4     0xb   5      OPC=vmovq_r64_xmm    
  cmovnzl %r8d, %ebx  #  5     0x10  4      OPC=cmovnzl_r32_r32  
  retq                #  6     0x14  1      OPC=retq             
                                                                 
.size target, .-target
