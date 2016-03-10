  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                               #  Line  RIP   Bytes  Opcode              
.target:                             #        0     0      OPC=<label>         
  callq .read_of_into_rbx            #  1     0     5      OPC=callq_label     
  callq .read_sf_into_rcx            #  2     0x5   5      OPC=callq_label     
  callq .move_064_032_rcx_r10d_r11d  #  3     0xa   5      OPC=callq_label     
  movslq %ebx, %r11                  #  4     0xf   3      OPC=movslq_r64_r32  
  xorw %r11w, %r10w                  #  5     0x12  4      OPC=xorw_r16_r16    
  xchgw %cx, %r10w                   #  6     0x16  4      OPC=xchgw_r16_r16   
  movb %cl, %ah                      #  7     0x1a  2      OPC=movb_rh_r8      
  retq                               #  8     0x1c  1      OPC=retq            
                                                                               
.size target, .-target
