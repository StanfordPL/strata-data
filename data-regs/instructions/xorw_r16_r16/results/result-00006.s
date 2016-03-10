  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                               #  Line  RIP   Bytes  Opcode              
.target:                             #        0     0      OPC=<label>         
  movswq %cx, %rdx                   #  1     0     4      OPC=movswq_r64_r16  
  callq .move_064_032_rdx_r10d_r11d  #  2     0x4   5      OPC=callq_label     
  movslq %r10d, %rcx                 #  3     0x9   3      OPC=movslq_r64_r32  
  callq .move_016_008_bx_r12b_r13b   #  4     0xc   5      OPC=callq_label     
  callq .move_008_016_r12b_r13b_dx   #  5     0x11  5      OPC=callq_label     
  xorq %rcx, %rdx                    #  6     0x16  3      OPC=xorq_r64_r64    
  callq .read_sf_into_rbx            #  7     0x19  5      OPC=callq_label     
  adcw %dx, %bx                      #  8     0x1e  3      OPC=adcw_r16_r16    
  retq                               #  9     0x21  1      OPC=retq            
                                                                               
.size target, .-target
