  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                      #  Line  RIP   Bytes  Opcode              
.target:                                    #        0     0      OPC=<label>         
  callq .move_128_032_xmm1_eax_edx_r8d_r9d  #  1     0     5      OPC=callq_label     
  andl %r8d, %eax                           #  2     0x5   3      OPC=andl_r32_r32    
  setnz %r8b                                #  3     0x8   4      OPC=setnz_r8        
  movswl %r8w, %ebx                         #  4     0xc   4      OPC=movswl_r32_r16  
  xchgl %edx, %ebx                          #  5     0x10  2      OPC=xchgl_r32_r32   
  retq                                      #  6     0x12  1      OPC=retq            
                                                                                      
.size target, .-target
