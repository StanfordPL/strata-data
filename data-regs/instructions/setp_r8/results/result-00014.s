  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                     #  Line  RIP  Bytes  Opcode              
.target:                   #        0    0      OPC=<label>         
  callq .read_pf_into_rcx  #  1     0    5      OPC=callq_label     
  shlb $0x1, %ch           #  2     0x5  2      OPC=shlb_rh_one     
  movswl %cx, %ebx         #  3     0x7  3      OPC=movswl_r32_r16  
  retq                     #  4     0xa  1      OPC=retq            
                                                                    
.size target, .-target
