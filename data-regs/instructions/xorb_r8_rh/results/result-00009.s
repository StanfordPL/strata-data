  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text                             #  Line  RIP   Bytes  Opcode             
.target:                           #        0     0      OPC=<label>        
  movsbq %bl, %rdx                 #  1     0     4      OPC=movsbq_r64_r8  
  callq .move_064_032_rdx_r8d_r9d  #  2     0x4   5      OPC=callq_label    
  movsbw %ah, %si                  #  3     0x9   4      OPC=movsbw_r16_rh  
  callq .move_016_032_r8w_r9w_edx  #  4     0xd   5      OPC=callq_label    
  callq .move_032_016_edx_r8w_r9w  #  5     0x12  5      OPC=callq_label    
  xorw %r8w, %si                   #  6     0x17  4      OPC=xorw_r16_r16   
  movzbl %sil, %ebx                #  7     0x1b  4      OPC=movzbl_r32_r8  
  retq                             #  8     0x1f  1      OPC=retq           
                                                                            
.size target, .-target
