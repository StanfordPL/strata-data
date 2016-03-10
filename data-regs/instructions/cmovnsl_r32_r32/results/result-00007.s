  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                     #  Line  RIP  Bytes  Opcode               
.target:                   #        0    0      OPC=<label>          
  movl %ecx, %esi          #  1     0    2      OPC=movl_r32_r32     
  callq .read_sf_into_rcx  #  2     0x2  5      OPC=callq_label      
  callq .write_cl_to_pf    #  3     0x7  5      OPC=callq_label      
  cmovpol %esi, %ebx       #  4     0xc  3      OPC=cmovpol_r32_r32  
  retq                     #  5     0xf  1      OPC=retq             
                                                                     
.size target, .-target
