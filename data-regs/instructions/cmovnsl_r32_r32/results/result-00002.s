  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                                          #  Line  RIP   Bytes  Opcode               
.target:                                        #        0     0      OPC=<label>          
  vmovd %ecx, %xmm3                             #  1     0     4      OPC=vmovd_xmm_r32    
  sets %cl                                      #  2     0x4   3      OPC=sets_r8          
  callq .move_128_032_xmm3_r10d_r11d_r12d_r13d  #  3     0x7   5      OPC=callq_label      
  xaddl %r13d, %r10d                            #  4     0xc   4      OPC=xaddl_r32_r32    
  callq .write_cl_to_pf                         #  5     0x10  5      OPC=callq_label      
  cmovpol %r13d, %ebx                           #  6     0x15  4      OPC=cmovpol_r32_r32  
  retq                                          #  7     0x19  1      OPC=retq             
                                                                                           
.size target, .-target
