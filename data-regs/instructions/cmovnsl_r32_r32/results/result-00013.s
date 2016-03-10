  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                               #  Line  RIP   Bytes  Opcode              
.target:                             #        0     0      OPC=<label>         
  callq .move_032_016_ebx_r10w_r11w  #  1     0     5      OPC=callq_label     
  movl %ecx, %ebp                    #  2     0x5   2      OPC=movl_r32_r32    
  callq .read_sf_into_rcx            #  3     0x7   5      OPC=callq_label     
  xchgb %bl, %r10b                   #  4     0xc   3      OPC=xchgb_r8_r8     
  shlb $0x1, %cl                     #  5     0xf   2      OPC=shlb_r8_one     
  cmovzl %ebp, %ebx                  #  6     0x11  3      OPC=cmovzl_r32_r32  
  retq                               #  7     0x14  1      OPC=retq            
                                                                               
.size target, .-target
