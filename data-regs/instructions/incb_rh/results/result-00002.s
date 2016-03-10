  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text                               #  Line  RIP   Bytes  Opcode              
.target:                             #        0     0      OPC=<label>         
  xorq %rbx, %rbx                    #  1     0     3      OPC=xorq_r64_r64    
  callq .move_032_016_ebx_r10w_r11w  #  2     0x3   5      OPC=callq_label     
  callq .read_sf_into_rbx            #  3     0x8   5      OPC=callq_label     
  incw %r11w                         #  4     0xd   4      OPC=incw_r16        
  xchgw %r10w, %r11w                 #  5     0x11  4      OPC=xchgw_r16_r16   
  movzwl %r10w, %ecx                 #  6     0x15  4      OPC=movzwl_r32_r16  
  movb %bh, %bh                      #  7     0x19  2      OPC=movb_rh_rh      
  addb %bh, %ah                      #  8     0x1b  2      OPC=addb_rh_rh      
  xaddb %cl, %ah                     #  9     0x1d  3      OPC=xaddb_rh_r8     
  retq                               #  10    0x20  1      OPC=retq            
                                                                               
.size target, .-target
